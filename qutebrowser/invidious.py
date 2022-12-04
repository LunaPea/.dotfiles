import qutebrowser.api.interceptor


def rewrite(request: qutebrowser.api.interceptor.Request):
    if request.request_url.host() == 'invidious.werapea.gay' and 'channel/' in request.request_url.path():
        id = request.request_url.path().replace('channel', 'playlist')[10::]
        request.request_url.setQuery('list='+id)
        request.request_url.setPath('/playlist')
        try:
            request.redirect(request.request_url)
        except:
            pass


qutebrowser.api.interceptor.register(rewrite)
