.class Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$1;
.super Ljava/lang/Object;
.source "InterestsPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/interests/InterestsService$GetInterestsCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$1;->this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showToastOnFailure()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$1;->val$context:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->ntp_no_interests_toast:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;II)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 83
    return-void
.end method


# virtual methods
.method public onInterestsAvailable([Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;)V
    .locals 3

    .prologue
    .line 59
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    const-string/jumbo v1, "NewTabPage.Interests.InterestsFetchSuccess"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 62
    if-nez v0, :cond_1

    .line 63
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$1;->showToastOnFailure()V

    .line 78
    :goto_1
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "NewTabPage.Interests.NumInterests"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseSlowlyHistogram(Ljava/lang/String;I)V

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 74
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$1;->showToastOnFailure()V

    goto :goto_1

    .line 77
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$1;->this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mPageView:Lorg/chromium/chrome/browser/ntp/interests/InterestsView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->access$000(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;)Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->setInterests(Ljava/util/List;)V

    goto :goto_1
.end method
