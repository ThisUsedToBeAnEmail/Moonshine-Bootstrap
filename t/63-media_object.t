use Moonshine::Test qw/:all/;

use Moonshine::Bootstrap::Component::MediaObject;
use Moonshine::Bootstrap::v3::MediaObject;

moon_test(
    name => 'media_object',
    build => {
        class => 'Moonshine::Bootstrap::Component::MediaObject',        
    },
    instructions => [
        {
            test => 'obj',
            func => 'media_object',
            args   => {
                y     => 'top',
                x     => 'left',
                items => [
                    {
                        action => 'media_link_img',
                        href   => "#",
                        img    => { src => 'url', alt => 'alt text' },
                    }
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="media-left media-top"><a href="#"><img alt="alt text" class="media-object" src="url"></img></a></div>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'media_object',
            args   => {
                body  => 1,
                items => [
                    {
                        action => 'h4',
                        class  => 'media-heading',
                        data   => "Middle aligned media",
                    }
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="media-body"><h4 class="media-heading">Middle aligned media</h4></div>',
                }
            ],
        }

    ],
);

moon_test(
    name => 'media_object',
    build => {
        class => 'Moonshine::Bootstrap::v3::MediaObject',        
    },
    instructions => [
        {
            test => 'obj',
            func => 'media_object',
            args   => {
                y     => 'top',
                x     => 'left',
                items => [
                    {
                        action => 'media_link_img',
                        href   => "#",
                        img    => { src => 'url', alt => 'alt text' },
                    }
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="media-left media-top"><a href="#"><img alt="alt text" class="media-object" src="url"></img></a></div>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'media_object',
            args   => {
                body  => 1,
                items => [
                    {
                        action => 'h4',
                        class  => 'media-heading',
                        data   => "Middle aligned media",
                    }
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="media-body"><h4 class="media-heading">Middle aligned media</h4></div>',
                }
            ],
        }

    ],
);

sunrise();
