*** Variables ***
&{product_category_locator}
...    ctn_product_category=xpath=//android.widget.RelativeLayout[@resource-id="th.co.gosoft.allonline.uat:id/rootProductCategory"]
...    ctn_product=xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="th.co.gosoft.allonline.uat:id/recyclerSearchProductView"]/android.widget.FrameLayout[1]
...    img_product=xpath=(//android.widget.ImageView[@resource-id="th.co.gosoft.allonline.uat:id/sharedProductItemImage"])[1]
...    btn_basket=xpath=//android.widget.LinearLayout[@resource-id="th.co.gosoft.allonline.uat:id/layoutIconBasket"]/android.widget.ImageView