.class Lorg/chromium/chrome/browser/ChromeApplication$4;
.super Ljava/lang/Object;
.source "ChromeApplication.java"

# interfaces
.implements Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$AccountsChangedObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeApplication;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeApplication;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeApplication$4;->this$0:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 439
    new-instance v0, Lorg/chromium/chrome/browser/ChromeApplication$4$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeApplication$4$1;-><init>(Lorg/chromium/chrome/browser/ChromeApplication$4;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method
