.class Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity$CipherKeySaver;
.super Ljava/lang/Object;
.source "IncognitoDocumentActivity.java"

# interfaces
.implements Lorg/chromium/content/browser/crypto/CipherFactory$CipherDataObserver;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity$CipherKeySaver;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/crypto/CipherFactory;->addCipherDataObserver(Lorg/chromium/content/browser/crypto/CipherFactory$CipherDataObserver;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onCipherDataGenerated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity$CipherKeySaver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity$CipherKeySaver;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v2}, Lorg/chromium/chrome/browser/document/CipherKeyActivity;->createIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/crypto/CipherFactory;->removeCipherDataObserver(Lorg/chromium/content/browser/crypto/CipherFactory$CipherDataObserver;)V

    .line 38
    return-void
.end method
