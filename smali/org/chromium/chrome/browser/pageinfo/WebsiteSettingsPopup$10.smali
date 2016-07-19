.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebsiteSettingsPopup.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$10;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$10;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mCurrentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$1202(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 872
    return-void
.end method
