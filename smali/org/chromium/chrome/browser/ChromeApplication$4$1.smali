.class Lorg/chromium/chrome/browser/ChromeApplication$4$1;
.super Ljava/lang/Object;
.source "ChromeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/ChromeApplication$4;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeApplication$4;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeApplication$4$1;->this$1:Lorg/chromium/chrome/browser/ChromeApplication$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$4$1;->this$1:Lorg/chromium/chrome/browser/ChromeApplication$4;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ChromeApplication$4;->this$0:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor;->start(Landroid/content/Context;)V

    .line 443
    return-void
.end method
