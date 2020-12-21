{if $sArticle.attr_hasadditionalbadge}
	<div class="product--badge badge--additionalbadge">
		{s name="ListingBoxAdditionalBadgeText" namespace="frontend/listing/box_article/product-badges"}{if $sArticle.attr_textadditionalbadge != ""}{$sArticle.attr_textadditionalbadge}{else}BADGE{/if}{/s}
	</div>
{/if}