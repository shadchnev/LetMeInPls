// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function showAddSiteForm() {
  $("#new-site-form").show();
  $("#new-site-link").hide();
}

function showAddAccountForm(id) {
  $("#new-account-form-" + id).show();
  $("#new-account-link-" + id).hide();
}
