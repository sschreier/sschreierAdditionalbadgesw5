<?php
  namespace sschreierAdditionalbadgesw5\Subscriber;

  use Enlight\Event\SubscriberInterface;
  use Psr\Container\ContainerInterface;

  class EventSubscriber implements SubscriberInterface {
    private $pluginDirectory;

    /**
     * @var ContainerInterface
     */
    private $container;

    public function __construct($pluginName, $pluginDirectory, ContainerInterface $container){
      $this->pluginDirectory = $pluginDirectory;
      $this->container = $container;
    }

    public static function getSubscribedEvents(){
      return [
        'Enlight_Controller_Action_PreDispatch' => 'onPreDispatch',
        'Enlight_Controller_Action_PreDispatch_Widgets' => 'onPreDispatch'
      ];
    }

    public function onPreDispatch(){
      if(version_compare(Shopware()->Config()->get( 'Version' ),'5.7.0','<')){
        $this->container->get('Template')->addTemplateDir($this->pluginDirectory . '/Resources/views');
      }else{
        $this->container->get('template')->addTemplateDir($this->pluginDirectory . '/Resources/views');
      }
    }
  }