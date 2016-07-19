.class public Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;
.super Landroid/os/Handler;
.source "VerifiedHandler.java"


# instance fields
.field private final mAuthRequirements:I

.field private final mCallerPackageToMatch:Ljava/lang/String;

.field private final mClientTrustMap:Ljava/util/Map;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mClientTrustMap:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mContext:Landroid/content/Context;

    .line 44
    iput p2, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mAuthRequirements:I

    .line 45
    iput-object p3, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mCallerPackageToMatch:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public checkCallerIsValid()Z
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mCallerPackageToMatch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mAuthRequirements:I

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isCallerValid(Landroid/content/Context;I)Z

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mAuthRequirements:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mCallerPackageToMatch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isCallerValidForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 4

    .prologue
    .line 50
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 51
    iget-object v1, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mClientTrustMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mClientTrustMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->checkCallerIsValid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/externalauth/VerifiedHandler;->mClientTrustMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_0
.end method
