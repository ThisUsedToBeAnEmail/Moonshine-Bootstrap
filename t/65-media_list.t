use Moonshine::Test qw/:all/;

use Moonshine::Bootstrap::Component::MediaList;
use Moonshine::Bootstrap::v3::MediaList;

moon_test(
    name  => 'media_list',
    build => {
        class => 'Moonshine::Bootstrap::Component::MediaList',
    },
    instructions => [
        {
            test => 'obj',
            func => 'media_list',
            args => {
                items => [
                    {
                        items => [
                            {
                                action => 'media_object',
                                x      => 'left',
                                y      => 'middle',
                                items  => [
                                    {
                                        action => 'media_link_img',
                                        href   => "#",
                                        img =>
                                          { src => 'url', alt => 'alt text' },
                                    }
                                ],
                            },
                            {
                                action => 'media_object',
                                body   => 1,
                                items  => [
                                    {
                                        action => 'h4',
                                        class  => 'media-heading',
                                        data   => "Middle aligned media",
                                    }
                                ],
                            }
                        ],
                    },
                ],
            },
            expected => 'Moonshine::Element',
            subtest  => [
                {
                    test => 'render',
                    expected =>
'<ul class="media-list"><li class="media"><div class="media-left media-middle"><a href="#"><img alt="alt text" class="media-object" src="url"></img></a></div><div class="media-body"><h4 class="media-heading">Middle aligned media</h4></div></li></ul>'
                }
            ],
        },
    ],
);

moon_test(
    name  => 'media_list',
    build => {
        class => 'Moonshine::Bootstrap::v3::MediaList',
    },
    instructions => [
        {
            test => 'obj',
            func => 'media_list',
            args => {
                items => [
                    {
                        items => [
                            {
                                action => 'media_object',
                                x      => 'left',
                                y      => 'middle',
                                items  => [
                                    {
                                        action => 'media_link_img',
                                        href   => "#",
                                        img =>
                                          { src => 'url', alt => 'alt text' },
                                    }
                                ],
                            },
                            {
                                action => 'media_object',
                                body   => 1,
                                items  => [
                                    {
                                        action => 'h4',
                                        class  => 'media-heading',
                                        data   => "Middle aligned media",
                                    }
                                ],
                            }
                        ],
                    },
                ],
            },
            expected => 'Moonshine::Element',
            subtest  => [
                {
                    test => 'render',
                    expected =>
'<ul class="media-list"><li class="media"><div class="media-left media-middle"><a href="#"><img alt="alt text" class="media-object" src="url"></img></a></div><div class="media-body"><h4 class="media-heading">Middle aligned media</h4></div></li></ul>'
                }
            ],
        },
    ],
);

sunrise();
