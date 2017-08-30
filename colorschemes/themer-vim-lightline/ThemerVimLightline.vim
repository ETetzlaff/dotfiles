

  
  if &background == 'dark'
    
  let s:shade0 = "#282C34"
  let s:shade1 = "#393E48"
  let s:shade2 = "#4B515C"
  let s:shade3 = "#5C6370"
  let s:shade4 = "#636D83"
  let s:shade5 = "#828997"
  let s:shade6 = "#979EAB"
  let s:shade7 = "#ABB2BF"
  let s:accent0 = "#E06C75"
  let s:accent1 = "#D19A66"
  let s:accent2 = "#E5C07B"
  let s:accent3 = "#98C379"
  let s:accent4 = "#56B6C2"
  let s:accent5 = "#61AFEF"
  let s:accent6 = "#C678DD"
  let s:accent7 = "#BE5046"
  
  endif
  

  
  if &background == 'light'
    
  let s:shade0 = "#FAFAFA"
  let s:shade1 = "#CDCED1"
  let s:shade2 = "#A0A1A7"
  let s:shade3 = "#9D9D9F"
  let s:shade4 = "#83858B"
  let s:shade5 = "#696C77"
  let s:shade6 = "#51535D"
  let s:shade7 = "#383A42"
  let s:accent0 = "#E45649"
  let s:accent1 = "#986801"
  let s:accent2 = "#C18401"
  let s:accent3 = "#50A14F"
  let s:accent4 = "#0184BC"
  let s:accent5 = "#4078F2"
  let s:accent6 = "#A626A4"
  let s:accent7 = "#CA1243"
  
  endif
  

  let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
  let s:p.normal.left = [ [ s:shade1, s:accent5 ], [ s:shade7, s:shade2 ] ]
  let s:p.normal.right = [ [ s:shade1, s:shade4 ], [ s:shade5, s:shade2 ] ]
  let s:p.inactive.right = [ [ s:shade1, s:shade3 ], [ s:shade3, s:shade1 ] ]
  let s:p.inactive.left =  [ [ s:shade4, s:shade1 ], [ s:shade3, s:shade0 ] ]
  let s:p.insert.left = [ [ s:shade1, s:accent3 ], [ s:shade7, s:shade2 ] ]
  let s:p.replace.left = [ [ s:shade1, s:accent1 ], [ s:shade7, s:shade2 ] ]
  let s:p.visual.left = [ [ s:shade1, s:accent6 ], [ s:shade7, s:shade2 ] ]
  let s:p.normal.middle = [ [ s:shade5, s:shade1 ] ]
  let s:p.inactive.middle = [ [ s:shade4, s:shade1 ] ]
  let s:p.tabline.left = [ [ s:shade6, s:shade2 ] ]
  let s:p.tabline.tabsel = [ [ s:shade6, s:shade0 ] ]
  let s:p.tabline.middle = [ [ s:shade2, s:shade4 ] ]
  let s:p.tabline.right = copy(s:p.normal.right)
  let s:p.normal.error = [ [ s:accent0, s:shade0 ] ]
  let s:p.normal.warning = [ [ s:accent2, s:shade1 ] ]

  let g:lightline#colorscheme#ThemerVimLightline#palette = lightline#colorscheme#fill(s:p)

  