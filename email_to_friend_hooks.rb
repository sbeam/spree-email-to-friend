class EmailToFriendHooks < Spree::ThemeSupport::HookListener
  insert_after :product_description do
    %(<p class="email_to_friend">
        <%= link_to(t('email_to_friend.send_to_friend'), email_to_friend_url('product', @product)) %>
    </p>)
  end

  insert_after(:admin_configurations_menu) do
    %[
      <tr>
        <td><%= link_to t("captcha.captcha_settings"), admin_captcha_settings_path %></td>
        <td><%= t("captcha.manage_keys") %></td>
      </tr>
    ] 
  end
end
