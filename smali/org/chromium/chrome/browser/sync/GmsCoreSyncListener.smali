.class public abstract Lorg/chromium/chrome/browser/sync/GmsCoreSyncListener;
.super Ljava/lang/Object;
.source "GmsCoreSyncListener.java"

# interfaces
.implements Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;


# instance fields
.field private mGmsCoreInformed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncStateChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isUsingSecondaryPassphrase()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isCryptographerReady()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lorg/chromium/chrome/browser/sync/GmsCoreSyncListener;->mGmsCoreInformed:Z

    if-nez v4, :cond_2

    .line 32
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getCustomPassphraseKey()[B

    move-result-object v0

    .line 33
    array-length v2, v0

    if-lez v2, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/sync/GmsCoreSyncListener;->updateEncryptionKey([B)V

    .line 35
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/sync/GmsCoreSyncListener;->mGmsCoreInformed:Z

    .line 41
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 29
    goto :goto_0

    .line 37
    :cond_2
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/sync/GmsCoreSyncListener;->mGmsCoreInformed:Z

    if-eqz v0, :cond_0

    .line 39
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/sync/GmsCoreSyncListener;->mGmsCoreInformed:Z

    goto :goto_1
.end method

.method public abstract updateEncryptionKey([B)V
.end method
