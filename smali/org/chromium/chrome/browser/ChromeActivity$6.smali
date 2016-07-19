.class Lorg/chromium/chrome/browser/ChromeActivity$6;
.super Ljava/lang/Object;
.source "ChromeActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/nfc/BeamProvider;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$6;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTabUrlForBeam()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 693
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity$6;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->isOverlayVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-object v0

    .line 694
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity$6;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$6;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
