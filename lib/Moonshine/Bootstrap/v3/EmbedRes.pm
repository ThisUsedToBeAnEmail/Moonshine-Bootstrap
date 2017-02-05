package Moonshine::Bootstrap::v3::EmbedRes;

use Moonshine::Magic;

require Moonshine::Bootstrap::Component::EmbedRes; 
require Moonshine::Bootstrap::v3::EmbedResponsive;
require Moonshine::Bootstrap::v3::EmbedResponsiveIframe;

extends (
    'Moonshine::Bootstrap::Component::EmbedRes', 
    'Moonshine::Bootstrap::v3::EmbedResponsive',  
    'Moonshine::Bootstrap::v3::EmbedResponsiveIframe',  
);

1;


