.class public interface abstract Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;
.super Ljava/lang/Object;
.source "NewTabPageView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;


# virtual methods
.method public abstract ensureIconIsAvailable(Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/chrome/browser/favicon/FaviconHelper$IconAvailabilityCallback;)V
.end method

.method public abstract focusSearchBox(ZLjava/lang/String;)V
.end method

.method public abstract getLargeIconForUrl(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)V
.end method

.method public abstract getSearchProviderLogo(Lorg/chromium/chrome/browser/ntp/LogoBridge$LogoObserver;)V
.end method

.method public abstract isInterestsEnabled()Z
.end method

.method public abstract isLocationBarShownInNTP()Z
.end method

.method public abstract isOfflineAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isToolbarEnabled()Z
.end method

.method public abstract isVoiceSearchEnabled()Z
.end method

.method public abstract navigateToBookmarks()V
.end method

.method public abstract navigateToInterests()V
.end method

.method public abstract navigateToRecentTabs()V
.end method

.method public abstract onLoadingComplete([Lorg/chromium/chrome/browser/ntp/MostVisitedItem;)V
.end method

.method public abstract onLogoClicked(Z)V
.end method

.method public abstract open(Ljava/lang/String;)V
.end method

.method public abstract optOutPromoClicked(Z)V
.end method

.method public abstract optOutPromoShown()V
.end method

.method public abstract setMostVisitedURLsObserver(Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;I)V
.end method

.method public abstract shouldShowOptOutPromo()Z
.end method
