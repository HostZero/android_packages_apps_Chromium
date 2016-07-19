.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$1;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$000(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$000(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->createAllAnimations(Z)Landroid/animation/Animator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$100(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 314
    return-void
.end method
