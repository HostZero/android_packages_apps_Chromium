.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;
.super Landroid/app/Dialog;
.source "WebsiteSettingsPopup.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;->superDismiss()V

    return-void
.end method

.method private superDismiss()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 339
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$200(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDismissWithoutAnimation:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$300(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 364
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->createAllAnimations(Z)Landroid/animation/Animator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$100(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Z)Landroid/animation/Animator;

    move-result-object v0

    .line 348
    new-instance v1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
