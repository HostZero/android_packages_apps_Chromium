.class Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$2;
.super Ljava/lang/Object;
.source "LocationBarTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$2;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$2;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->getWindowDelegate()Lorg/chromium/chrome/browser/WindowDelegate;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/WindowDelegate;->setWindowSoftInputMode(I)V

    .line 50
    return-void
.end method
