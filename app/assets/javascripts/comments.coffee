$ ->
  $('#new_comment').on("ajax:success", (e, data, status, xhr) ->
    # フラッシュメッセージ付きでリダイレクトするだけなので、success時はココでは何もしない
  ).on "ajax:error", (e, xhr, status, error) ->
    message = xhr.responseText
    $('#notice').html(message, { comment: @comment })
