.class Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;
.super Ljava/lang/Object;
.source "InterestsItemView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;->this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$1;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;-><init>(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;)V

    return-void
.end method


# virtual methods
.method public onImageDownloaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 235
    :goto_0
    const-string/jumbo v1, "NewTabPage.Interests.ImageDownloadSuccess"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 237
    if-nez v0, :cond_2

    .line 243
    :cond_0
    :goto_1
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;->this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;

    # getter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->access$500(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;)Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;->this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;

    # invokes: Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setImage(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->access$600(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
