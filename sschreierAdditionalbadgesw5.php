<?php
    namespace sschreierAdditionalbadgesw5;

    use Shopware\Components\Plugin;
    use Shopware\Components\Plugin\Context\InstallContext;
    use Shopware\Components\Plugin\Context\ActivateContext;
    use Shopware\Components\Plugin\Context\UninstallContext;

    class sschreierAdditionalbadgesw5 extends Plugin {
		public function install(InstallContext $installContext){
            $this->createArticleAttribute();
        }

        public function activate(ActivateContext $activateContext){
            $activateContext->scheduleClearCache(InstallContext::CACHE_LIST_ALL);
        }

        public function uninstall(UninstallContext $uninstallContext){
            if($uninstallContext->keepUserData()){
                return;
            }
            
            $this->removeArticleAttribute();
            
            $uninstallContext->scheduleClearCache(InstallContext::CACHE_LIST_ALL);
        }

        private function createArticleAttribute(){
            $attributeService = $this->container->get('shopware_attribute.crud_service');   
            
            $attributeService->update(
            	's_articles_attributes', 
            	'attr_hasadditionalbadge', 
            	'boolean', 
            	[
	                'label' => 'Hat das zusätzliche Badge',
	                'supportText' => '',
	                'helpText' => 'Hat das zusätzliche Badge',
	                'translatable' => true,
	                'displayInBackend' => true,
	                'position' => 4,
	                'custom' => true
            	]
            );

            $attributeService->update(
                's_articles_attributes', 
                'attr_textadditionalbadge', 
                'string', 
                [
                    'label' => 'Text des zusätzlichen Badges',
                    'supportText' => '',
                    'helpText' => 'Text des zusätzlichen Badges',
                    'translatable' => true,
                    'displayInBackend' => true,
                    'position' => 5,
                    'custom' => true
                ]
            );

            $attributeService->update(
                's_articles_attributes', 
                'attr_backgroundcoloradditionalbadge', 
                'string', 
                [
                    'label' => 'Hintergrundfarbe des zusätzlichen Badges als Hexcode',
                    'supportText' => '',
                    'helpText' => 'Hintergrundfarbe des zusätzlichen Badges als Hexcode',
                    'translatable' => true,
                    'displayInBackend' => true,
                    'position' => 6,
                    'custom' => true
                ]
            );

            $attributeService->update(
                's_articles_attributes', 
                'attr_fontcoloradditionalbadge', 
                'string', 
                [
                    'label' => 'Schriftfarbe des zusätzlichen Badges als Hexcode',
                    'supportText' => '',
                    'helpText' => 'Schriftfarbe des zusätzlichen Badges als Hexcode',
                    'translatable' => true,
                    'displayInBackend' => true,
                    'position' => 6,
                    'custom' => true
                ]
            );

            $metaDataCache = $this->container->get('models')->getConfiguration()->getMetadataCacheImpl();
            $metaDataCache->deleteAll();

            $this->container->get('models')->generateAttributeModels(
                array(
                	's_articles_attributes'
                )
            );
        }

        private function removeArticleAttribute(){
            $attributeService = $this->container->get('shopware_attribute.crud_service');
            
            try {
                $attributeService->delete('s_articles_attributes', 'attr_hasadditionalbadge');
            } catch (\Exception $e) {}

            try {
                $attributeService->delete('s_articles_attributes', 'attr_textadditionalbadge');
            } catch (\Exception $e) {}

            try {
                $attributeService->delete('s_articles_attributes', 'attr_backgroundcoloradditionalbadge');
            } catch (\Exception $e) {}

            try {
                $attributeService->delete('s_articles_attributes', 'attr_fontcoloradditionalbadge');
            } catch (\Exception $e) {}

            $metaDataCache = $this->container->get('models')->getConfiguration()->getMetadataCacheImpl();
            $metaDataCache->deleteAll();

            $this->container->get('models')->generateAttributeModels(
                array(
                	's_articles_attributes'
                )
            );
        }
    }