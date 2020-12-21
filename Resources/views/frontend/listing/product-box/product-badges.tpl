{extends file="parent:frontend/listing/product-box/product-badges.tpl"}

{block name="frontend_listing_box_article_badges"}
	{$smarty.block.parent}
	{if $sArticle.attr_hasadditionalbadge && ($sArticle.attr_backgroundcoloradditionalbadge != "" || $sArticle.attr_fontcoloradditionalbadge != "")}
		<style type="text/css">
			.product--box .product--badges .product--badge.badge--additionalbadge {
				{if $sArticle.attr_backgroundcoloradditionalbadge != ""}
	            	background-color: {$sArticle.attr_backgroundcoloradditionalbadge};
	            {/if}
	            {if $sArticle.attr_fontcoloradditionalbadge != ""}
	            	color: {$sArticle.attr_fontcoloradditionalbadge};
	            {/if}
	        }
	    </style>
    {/if}
{/block}

{block name='frontend_listing_box_article_discount'}
	{if ({config name="positionAdditionalBadge" namespace="sschreierAdditionalbadgesw5"}) == 0 && (({config name="showAdditionalBadgeInProductbox" namespace="sschreierAdditionalbadgesw5"}) == 0)}
		{block name='frontend_listing_box_article_additionalbadge'}
			{include file="frontend/listing/product-box/additional-badge.tpl"}
		{/block}
	{/if}
	{if ({config name="showDiscountBadgeInProductbox" namespace="sschreierAdditionalbadgesw5"}) == 0}
		{block name='frontend_listing_box_article_discount_inner'}
			{$smarty.block.parent}
		{/block}
	{/if}
	{if ({config name="positionAdditionalBadge" namespace="sschreierAdditionalbadgesw5"}) == 1 && (({config name="showAdditionalBadgeInProductbox" namespace="sschreierAdditionalbadgesw5"}) == 0)}
		{block name='frontend_listing_box_article_additionalbadge'}
			{include file="frontend/listing/product-box/additional-badge.tpl"}
		{/block}
	{/if}
{/block}

{block name='frontend_listing_box_article_hint'}
	{if ({config name="showHighlightBadgeInProductbox" namespace="sschreierAdditionalbadgesw5"}) == 0}
		{block name='frontend_listing_box_article_hint_inner'}
			{$smarty.block.parent}
		{/block}
	{/if}
{/block}

{block name='frontend_listing_box_article_new'}
	{if ({config name="positionAdditionalBadge" namespace="sschreierAdditionalbadgesw5"}) == 2 && (({config name="showAdditionalBadgeInProductbox" namespace="sschreierAdditionalbadgesw5"}) == 0)}
		{block name='frontend_listing_box_article_additionalbadge'}
			{include file="frontend/listing/product-box/additional-badge.tpl"}
		{/block}
	{/if}
	{if ({config name="showNewBadgeInProductbox" namespace="sschreierAdditionalbadgesw5"}) == 0}
		{block name='frontend_listing_box_article_new_inner'}
			{$smarty.block.parent}
		{/block}
	{/if}
	{if ({config name="positionAdditionalBadge" namespace="sschreierAdditionalbadgesw5"}) == 3 && (({config name="showAdditionalBadgeInProductbox" namespace="sschreierAdditionalbadgesw5"}) == 0)}
		{block name='frontend_listing_box_article_additionalbadge'}
			{include file="frontend/listing/product-box/additional-badge.tpl"}
		{/block}
	{/if}
{/block}

{block name='frontend_listing_box_article_esd'}
	{if ({config name="showEsdBadgeInProductbox" namespace="sschreierAdditionalbadgesw5"}) == 0}
		{block name='frontend_listing_box_article_esd_inner'}
			{$smarty.block.parent}
		{/block}
	{/if}
	{if ({config name="positionAdditionalBadge" namespace="sschreierAdditionalbadgesw5"}) == 4 && (({config name="showAdditionalBadgeInProductbox" namespace="sschreierAdditionalbadgesw5"}) == 0)}
		{block name='frontend_listing_box_article_additionalbadge'}
			{include file="frontend/listing/product-box/additional-badge.tpl"}
		{/block}
	{/if}
{/block}