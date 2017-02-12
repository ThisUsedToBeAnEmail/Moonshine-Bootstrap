use Moonshine::Test qw/:all/;
use strict;
use warnings;
use Moonshine::Bootstrap::v3;

moon_test(
    name => 'Bootstrap - embed_responsive - embed_responsive_iframe',
    build => {
        class => 'Moonshine::Bootstrap::v3',        
    },
    instructions => [
         {
            test => 'obj',
            func => 'embed_responsive',
            args => {
                children => [
                    {
                        action => 'embed_responsive_iframe',
                        src => 'http://lnation.org',
                    },
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="embed-responsive"><iframe class="embed-responsive-item" src="http://lnation.org"></iframe></div>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'embed_res',
            args => {
                iframe => {
                    src => 'http://lnation.org',
                },
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="embed-responsive"><iframe class="embed-responsive-item" src="http://lnation.org"></iframe></div>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'caret',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<span class="caret"></span>',
                }
            ],
        },
       {
            test => 'obj',
            func => 'dropdown_button',
            args   => {
                split => 1,
                id    => 'dropdownMenu1',
                data  => 'Dropdown',
            },
			expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<button class="btn btn-default" type="button">Dropdown</button><button class="dropdown-toggle btn btn-default" id="dropdownMenu1" type="button" aria-expanded="true" aria-haspopup="true" data-toggle="dropdown"><span class="caret"></span></button>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'separator_li',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li class="divider" role="separator"></li>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'dropdown_header_li',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li class="dropdown-header"></li>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'linked_li',
            args   => {
                link    => 'http://some.url',
                data    => 'URL',
                disable => 1,
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li class="disabled"><a href="http://some.url">URL</a></li>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'linked_li_span',
            args => {
                link => { href => 'http://some.url' },
                span => { data => 'Achoooo' },
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li><a href="http://some.url"><span>Achoooo</span></a></li>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'dropdown_ul',
            args => {
                separators      => [ 1, 3, 5 ],
                aria_labelledby => 'dropdownMenu1',
                children        => [
                    {
                        action => 'linked_li',
                        link => 'http://some.url',
                        data => 'URL',
                    },
                    {
                        action => 'linked_li',
                        link => 'http://second.url',
                        data => 'Second',
                    }
                ],           
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"><li class="divider" role="separator"></li><li><a href="http://some.url">URL</a></li><li class="divider" role="separator"></li><li><a href="http://second.url">Second</a></li><li class="divider" role="separator"></li></ul>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'dropdown',
            args => {
                mid    => 'dropdownMenu1',
                dropup => 1,
                ul     => {
                    separators => [ 1, 3, 5 ],
                    children   => [
                        {
                            action => 'linked_li',
                            link => 'http://some.url',
                            data => 'URL',
                        },
                        {
                            data   => 'Second',
                            action => 'dropdown_header_li',
                        }
                    ],
                },
                button => {
                    id   => 'dropdownMenu1',
                    data => 'Dropdown',
                },            
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="dropup"><button class="dropdown-toggle btn btn-default" id="dropdownMenu1" type="button" aria-expanded="true" aria-haspopup="true" data-toggle="dropdown">Dropdown<span class="caret"></span></button><ul class="dropdown-menu" aria-labelledby="dropdownMenu1"><li class="divider" role="separator"></li><li><a href="http://some.url">URL</a></li><li class="divider" role="separator"></li><li class="dropdown-header">Second</li><li class="divider" role="separator"></li></ul></div>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'button_group',
            args => {
                sizing => 'lg',
                group  => [
                    {
                        data => 'one',
                    },
                    {
                        data => 'two',
                    },
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="btn-group btn-group-lg" role="group"><button class="btn btn-default" type="button">one</button><button class="btn btn-default" type="button">two</button></div>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'button_toolbar',
            args   => {
                toolbar => [
                    {
                        group => [
                            {
                                data => 'one',
                            },
                        ],
                    },
                    {
                        group => [
                            {
                                data => 'two',
                            }
                        ],
                    },
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected =>'<div class="btn-toolbar" role="toolbar"><div class="btn-group" role="group"><button class="btn btn-default" type="button">one</button></div><div class="btn-group" role="group"><button class="btn btn-default" type="button">two</button></div></div>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'input',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<input class="form-control" type="text"></input>',
                }
            ],
        },

    ],
);

sunrise();

1;
