.class interface abstract Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;
.super Ljava/lang/Object;
.source "ExternalNavigationDelegate.java"


# virtual methods
.method public abstract clobberCurrentTab(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
.end method

.method public abstract getDefaultSmsPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract isChromeAppInForeground()Z
.end method

.method public abstract isSpecializedHandlerAvailable(Ljava/util/List;)Z
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
.end method

.method public abstract shouldRequestFileAccess(Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)Z
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivityIfNeeded(Landroid/content/Intent;)Z
.end method

.method public abstract startFileIntent(Landroid/content/Intent;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V
.end method

.method public abstract startIncognitoIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;Z)V
.end method

.method public abstract willChromeHandleIntent(Landroid/content/Intent;)Z
.end method
