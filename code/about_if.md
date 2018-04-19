# if层级嵌套

```
if ($area == 'singapore') {
    $locales = $this->setByLocaleAndRemoteLang($remoteLang, $localeLang);
    if ($locales) {
        $request->getSession()->set('_locale', $this->changeLang($locales));
        if ($currentUser->isLogin()) {
            $this->getUserService()->updateUserLocale($currentUser['id'],  $this->changeLang($locales));
        }

        return $this->redirectCurrentPage($request, $event);
    }
}
```

通过封装：

```
if ($locales) {
    $this->changeLanguage($locales);
}
```

同层级的判断放在一起：

```

```
