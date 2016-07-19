.class public interface abstract Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;
.super Ljava/lang/Object;
.source "RecentTabsPromoView.java"


# virtual methods
.method public abstract enableSync()V
.end method

.method public abstract getAccessPoint()I
.end method

.method public abstract getProfileDataCache()Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;
.end method

.method public abstract isSignedIn()Z
.end method

.method public abstract isSyncEnabled()Z
.end method

.method public abstract registerForSyncUpdates(Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V
.end method

.method public abstract unregisterForSyncUpdates(Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V
.end method
