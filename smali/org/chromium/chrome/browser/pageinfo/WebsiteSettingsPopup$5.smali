.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$5;
.super Landroid/widget/ScrollView;
.source "WebsiteSettingsPopup.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$5;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 685
    const/high16 v0, 0x43c80000    # 400.0f

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$5;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$200(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 687
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v1, v0, :cond_0

    .line 688
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 691
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 692
    return-void
.end method
