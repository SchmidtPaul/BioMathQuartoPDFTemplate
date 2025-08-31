#show: article.with(
  $if(title)$ title: "$title$", $endif$
  $if(subtitle)$ subtitle: "$subtitle$", $endif$
  $if(author)$ author: "$author$", $endif$
)
