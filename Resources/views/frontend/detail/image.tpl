{extends file="parent:frontend/detail/image.tpl"}

{block name="frontend_detail_image_box"}
    {if ({config name="showBadgesOnArticleDetailpage" namespace="sschreierAdditionalbadgesw5"}) == 0}
        <div class="product--badges product--badges-detail{if !$sArticle.images|count} no--thumbnails{/if}">
            {if ({config name="positionAdditionalBadge" namespace="sschreierAdditionalbadgesw5"}) == 0 && (({config name="showAdditionalBadgeOnArticleDetailpage" namespace="sschreierAdditionalbadgesw5"}) == 0)}
                {block name='frontend_detail_image_box_badge_additional'}
                    {include file="frontend/listing/product-box/additional-badge.tpl"}
                {/block}
            {/if}

            {if $sArticle.has_pseudoprice && (({config name="showDiscountBadgeOnArticleDetailpage" namespace="sschreierAdditionalbadgesw5"}) == 0)}
                {block name='frontend_detail_image_box_badge_discount'}
                    <div class="product--badge badge--discount">
                        <i class="icon--percent2"></i>
                    </div>
                {/block}
            {/if}

            {if ({config name="positionAdditionalBadge" namespace="sschreierAdditionalbadgesw5"}) == 1 && (({config name="showAdditionalBadgeOnArticleDetailpage" namespace="sschreierAdditionalbadgesw5"}) == 0)}
                {block name='frontend_detail_image_box_additionalbadge'}
                    {include file="frontend/listing/product-box/additional-badge.tpl"}
                {/block}
            {/if}

            {if $sArticle.highlight && (({config name="showHighlightBadgeOnArticleDetailpage" namespace="sschreierAdditionalbadgesw5"}) == 0)}
                {block name='frontend_detail_image_box_badge_hint'}
                    <div class="product--badge badge--recommend">
                        {s name="ListingBoxTip"}TIPP!{/s}
                    </div>
                {/block}
            {/if}

            {if ({config name="positionAdditionalBadge" namespace="sschreierAdditionalbadgesw5"}) == 2 && (({config name="showAdditionalBadgeOnArticleDetailpage" namespace="sschreierAdditionalbadgesw5"}) == 0)}
                {block name='frontend_detail_image_box_additionalbadge'}
                    {include file="frontend/listing/product-box/additional-badge.tpl"}
                {/block}
            {/if}

            {if $sArticle.newArticle && (({config name="showNewBadgeOnArticleDetailpage" namespace="sschreierAdditionalbadgesw5"}) == 0)}
                {block name='frontend_detail_image_box_badge_new'}
                    <div class="product--badge badge--newcomer">
                        {s name="ListingBoxNew"}NEU{/s}
                    </div>
                {/block}
            {/if}

            {if ({config name="positionAdditionalBadge" namespace="sschreierAdditionalbadgesw5"}) == 3 && (({config name="showAdditionalBadgeOnArticleDetailpage" namespace="sschreierAdditionalbadgesw5"}) == 0)}
                {block name='frontend_detail_image_box_additionalbadge'}
                    {include file="frontend/listing/product-box/additional-badge.tpl"}
                {/block}
            {/if}

            {if $sArticle.esd && (({config name="showEsdBadgeOnArticleDetailpage" namespace="sschreierAdditionalbadgesw5"}) == 0)}
                {block name='frontend_detail_image_box_badge_esd'}
                    <div class="product--badge badge--esd">
                        <i class="icon--download"></i>
                    </div>
                {/block}
            {/if}

            {if ({config name="positionAdditionalBadge" namespace="sschreierAdditionalbadgesw5"}) == 4 && (({config name="showAdditionalBadgeOnArticleDetailpage" namespace="sschreierAdditionalbadgesw5"}) == 0)}
                {block name='frontend_detail_image_box_additionalbadge'}
                    {include file="frontend/listing/product-box/additional-badge.tpl"}
                {/block}
            {/if}
        </div>

        {if $sArticle.attr_hasadditionalbadge && ($sArticle.attr_backgroundcoloradditionalbadge != "" || $sArticle.attr_fontcoloradditionalbadge != "")}
            <style type="text/css">
                .product--details .product--image-container .product--badges .product--badge.badge--additionalbadge {
                    {if $sArticle.attr_backgroundcoloradditionalbadge != ""}
                        background-color: {$sArticle.attr_backgroundcoloradditionalbadge};
                    {/if}
                    {if $sArticle.attr_fontcoloradditionalbadge != ""}
                        color: {$sArticle.attr_fontcoloradditionalbadge};
                    {/if}
                }
            </style>
        {/if}
    {/if}

    {$smarty.block.parent}
{/block}