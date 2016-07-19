.class public Lorg/chromium/chrome/browser/media/cdm/MediaDrmCredentialManager;
.super Ljava/lang/Object;
.source "MediaDrmCredentialManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private static native nativeResetCredentials(Lorg/chromium/chrome/browser/media/cdm/MediaDrmCredentialManager$MediaDrmCredentialManagerCallback;)V
.end method

.method public static resetCredentials(Lorg/chromium/chrome/browser/media/cdm/MediaDrmCredentialManager$MediaDrmCredentialManagerCallback;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lorg/chromium/chrome/browser/media/cdm/MediaDrmCredentialManager;->nativeResetCredentials(Lorg/chromium/chrome/browser/media/cdm/MediaDrmCredentialManager$MediaDrmCredentialManagerCallback;)V

    .line 32
    return-void
.end method
