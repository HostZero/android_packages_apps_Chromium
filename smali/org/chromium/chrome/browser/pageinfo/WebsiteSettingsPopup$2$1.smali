.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebsiteSettingsPopup.java"


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;->this$1:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;->this$1:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$000(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1$1;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    return-void
.end method
