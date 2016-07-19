.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$14;
.super Ljava/lang/Object;
.source "NewTabPageView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$IconAvailabilityCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$14;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$14;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconAvailabilityChecked(Z)V
    .locals 2

    .prologue
    .line 859
    if-eqz p1, :cond_0

    .line 860
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$14;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedDesign:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$1100(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$14;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->onIconUpdated(Ljava/lang/String;)V

    .line 862
    :cond_0
    return-void
.end method
