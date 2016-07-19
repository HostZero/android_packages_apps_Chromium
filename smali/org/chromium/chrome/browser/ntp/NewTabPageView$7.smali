.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$7;
.super Landroid/support/v7/widget/aP;
.source "NewTabPageView.java"


# instance fields
.field private mScrolledOnce:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V
    .locals 1

    .prologue
    .line 362
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$7;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-direct {p0}, Landroid/support/v7/widget/aP;-><init>()V

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$7;->mScrolledOnce:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 366
    if-eq p2, v2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const-string/jumbo v0, "MobileNTP.Snippets.Scrolled"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 368
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$7;->mScrolledOnce:Z

    if-nez v0, :cond_0

    .line 369
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$7;->mScrolledOnce:Z

    .line 370
    const-string/jumbo v0, "NewTabPage.Snippets.Interactions"

    const/4 v1, 0x3

    invoke-static {v0, v2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0
.end method
