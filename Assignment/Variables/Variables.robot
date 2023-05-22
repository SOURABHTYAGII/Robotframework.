*** Variables ***
${URL}             https://www.amazon.in/
${BROWSER}         Chrome

#Home page 
${Today's deal}    xpath://*[@class='a-color-base as-title-block-left']
${Click on third item}  xpath://*[@class="a-unordered-list a-nostyle a-horizontal feed-carousel-shelf _deals-shoveler-v2_style_list__pjYuB"]/li[3]
${price}    xpath://*[@class='a-price-whole'][1]
${FirstProduct}    xpath://*[@class='a-section octopus-dlp-image-shield'][1]
${price1}    xpath://*[@id="corePriceDisplay_desktop_feature_div"]/div[1]/span[2]/span[2]/span[2]
${TechanicalDetails}    //*[@class='a-size-medium a-spacing-small']
${Rowpath}    xpath://*[@id='productDetails_techSpec_section_1']/tbody/tr
${Screen Resolution}    Screen Resolution
