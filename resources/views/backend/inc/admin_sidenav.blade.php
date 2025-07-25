<div class="aiz-sidebar-wrap">
    <div class="aiz-sidebar left c-scrollbar">
        <div class="aiz-side-nav-logo-wrap">
            <a href="{{ route('admin.dashboard') }}" class="d-block text-left">
                <img height="150" src="{{ uploaded_asset(get_setting('site_logo_colored')) }}"
                    alt="{{ get_setting('site_name') }}">
            </a>
        </div>
        <div class="aiz-side-nav-wrap">
            <div class="px-20px mb-3">
                <input class="form-control bg-soft-secondary border-0 form-control-sm text-white" type="text"
                    name="" placeholder="{{ trans('messages.search_in_menu') }}" id="menu-search"
                    onkeyup="menuSearch()">
            </div>
            <ul class="aiz-side-nav-list" id="search-menu">
            </ul>
            <ul class="aiz-side-nav-list" id="main-menu" data-toggle="aiz-side-menu">

                <li class="aiz-side-nav-item">
                    <a href="{{ route('admin.dashboard') }}" class="aiz-side-nav-link">
                        <i class="las la-home aiz-side-nav-icon"></i>
                        <span class="aiz-side-nav-text">{{ trans('messages.dashboard') }}</span>
                    </a>
                </li>

                @canany(['manage_services'])
                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link">
                            <i class="las la-money-bill aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">Services</span>
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <ul class="aiz-side-nav-list level-2">

                            <li class="aiz-side-nav-item">
                                <a class="aiz-side-nav-link" href="{{ route('service.create') }}">
                                    <span class="aiz-side-nav-text">Add New Service</span>
                                </a>
                            </li>

                            <li class="aiz-side-nav-item">
                                <a href="{{ route('service.index') }}"
                                    class="aiz-side-nav-link {{ areActiveRoutes(['service.index', 'service.edit']) }}">
                                    <span class="aiz-side-nav-text">All Services</span>
                                </a>
                            </li>

                        </ul>
                    </li>
                @endcanany

                @canany(['manage_projects'])
                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link">
                            <i class="las la-money-bill aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">Projects</span>
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <ul class="aiz-side-nav-list level-2">

                            <li class="aiz-side-nav-item">
                                <a class="aiz-side-nav-link" href="{{ route('project.create') }}">
                                    <span class="aiz-side-nav-text">Add New Project</span>
                                </a>
                            </li>

                            <li class="aiz-side-nav-item">
                                <a href="{{ route('project.index') }}"
                                    class="aiz-side-nav-link {{ areActiveRoutes(['project.index', 'project.edit']) }}">
                                    <span class="aiz-side-nav-text">All Projects</span>
                                </a>
                            </li>

                        </ul>
                    </li>
                @endcanany


                @canany(['upload_files'])
                    <li class="aiz-side-nav-item">
                        <a href="{{ route('uploaded-files.index') }}"
                            class="aiz-side-nav-link {{ areActiveRoutes(['uploaded-files.create']) }}">
                            <i class="las la-folder-open aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{ trans('messages.uploaded_files') }}</span>
                        </a>
                    </li>
                @endcanany

                @canany(['newsletter_subscribers'])
                    <li class="aiz-side-nav-item">
                        <a href="{{ route('subscribers.index') }}"
                            class="aiz-side-nav-link {{ areActiveRoutes(['subscribers.index']) }}">
                            <i class=" las la-newspaper aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">Newsletter Subscribers</span>
                        </a>
                    </li>
                @endcanany

                <li class="aiz-side-nav-item">
                    <a href="{{ route('enquiries.contact') }}"
                        class="aiz-side-nav-link {{ areActiveRoutes(['enquiries.contact']) }}">
                        <i class="las la-mail-bulk aiz-side-nav-icon"></i>
                        <span class="aiz-side-nav-text">Contact Enquiries</span>
                    </a>
                </li>

                <li class="aiz-side-nav-item">
                    <a href="{{ route('access-requests.contact') }}"
                        class="aiz-side-nav-link {{ areActiveRoutes(['access-requests.contact']) }}">
                        <i class="las la-mail-bulk aiz-side-nav-icon"></i>
                        <span class="aiz-side-nav-text">Access Requests</span>
                    </a>
                </li>

                @canany(['manage_marketing'])
                    @endif

                    @canany(['website_setup'])
                        <li class="aiz-side-nav-item">
                            <a href="#"
                                class="aiz-side-nav-link {{ areActiveRoutes(['website.footer', 'website.header', 'banners.*']) }}">
                                <i class="las la-desktop aiz-side-nav-icon"></i>
                                <span class="aiz-side-nav-text">Website Setup</span>
                                <span class="aiz-side-nav-arrow"></span>
                            </a>
                            <ul class="aiz-side-nav-list level-2">
                                <li class="aiz-side-nav-item">
                                    <a href="{{ route('website.footer', ['lang' => App::getLocale()]) }}"
                                        class="aiz-side-nav-link {{ areActiveRoutes(['website.footer']) }}">
                                        <span class="aiz-side-nav-text">Footer</span>
                                    </a>
                                </li>
                                <li class="aiz-side-nav-item">
                                    <a href="{{ route('website.pages') }}"
                                        class="aiz-side-nav-link {{ areActiveRoutes(['website.pages', 'custom-pages.create', 'custom-pages.edit']) }}">
                                        <span class="aiz-side-nav-text">Pages</span>
                                    </a>
                                </li>
                                <li class="aiz-side-nav-item">
                                    <a href="{{ route('website.appearance') }}" class="aiz-side-nav-link">
                                        <span class="aiz-side-nav-text">Appearance</span>
                                    </a>
                                </li>
                                <li class="aiz-side-nav-item">
                                    <a href="{{ route('home-slider.index') }}"
                                        class="aiz-side-nav-link {{ areActiveRoutes(['home-slider.index', 'home-slider.create', 'home-slider.edit']) }}">
                                        <span class="aiz-side-nav-text">Home Page Sliders</span>
                                    </a>
                                </li>

                                <li class="aiz-side-nav-item">
                                    <a href="{{ route('partners.index') }}"
                                        class="aiz-side-nav-link {{ areActiveRoutes(['partners.index', 'partners.create', 'partners.edit']) }}">
                                        <span class="aiz-side-nav-text">Partners</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                    @endcanany
                    @canany(['manage_staffs'])
                        <li class="aiz-side-nav-item">
                            <a href="#" class="aiz-side-nav-link">
                                <i class="las la-user-tie aiz-side-nav-icon"></i>
                                <span class="aiz-side-nav-text">{{ trans('messages.staffs') }}</span>
                                <span class="aiz-side-nav-arrow"></span>
                            </a>
                            <ul class="aiz-side-nav-list level-2">
                                <li class="aiz-side-nav-item">
                                    <a href="{{ route('staffs.create') }}"
                                        class="aiz-side-nav-link {{ areActiveRoutes(['staffs.create']) }}">
                                        <span class="aiz-side-nav-text">{{ trans('messages.add_new_staffs') }}</span>
                                    </a>
                                </li>
                                <li class="aiz-side-nav-item">
                                    <a href="{{ route('staffs.index') }}"
                                        class="aiz-side-nav-link {{ areActiveRoutes(['staffs.index', 'staffs.edit']) }}">
                                        <span class="aiz-side-nav-text">{{ trans('messages.all_staffs') }}</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    @endcanany

                    @canany(['manage_roles'])
                        <li class="aiz-side-nav-item">
                            <a href="#" class="aiz-side-nav-link">
                                <i class="las la-user-tie aiz-side-nav-icon"></i>
                                <span class="aiz-side-nav-text">{{ trans('messages.roles_permissions') }}</span>
                                <span class="aiz-side-nav-arrow"></span>
                            </a>
                            <ul class="aiz-side-nav-list level-2">
                                <li class="aiz-side-nav-item">
                                    <a href="{{ route('roles.create') }}"
                                        class="aiz-side-nav-link {{ areActiveRoutes(['roles.create']) }}">
                                        <span class="aiz-side-nav-text">{{ trans('messages.add_new_role') }}</span>
                                    </a>
                                </li>
                                <li class="aiz-side-nav-item">
                                    <a href="{{ route('roles.index') }}"
                                        class="aiz-side-nav-link {{ areActiveRoutes(['roles.index', 'roles.edit']) }}">
                                        <span class="aiz-side-nav-text">{{ trans('messages.all_roles') }}</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    @endcanany
                </ul>
            </div>
        </div>
        <div class="aiz-sidebar-overlay"></div>
    </div>
