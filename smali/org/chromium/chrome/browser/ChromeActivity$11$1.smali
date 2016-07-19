.class Lorg/chromium/chrome/browser/ChromeActivity$11$1;
.super Ljava/lang/Object;
.source "ChromeActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/ChromeActivity$11;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity$11;)V
    .locals 0

    .prologue
    .line 1501
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$11$1;->this$1:Lorg/chromium/chrome/browser/ChromeActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$11$1;->this$1:Lorg/chromium/chrome/browser/ChromeActivity$11;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ChromeActivity$11;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->onDeferredStartup()V

    .line 1505
    const/4 v0, 0x0

    return v0
.end method
