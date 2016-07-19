.class Lorg/chromium/chrome/browser/tab/Tab$4;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1776
    const-class v0, Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tab/Tab$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 1776
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab$4;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1779
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$4;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    # getter for: Lorg/chromium/chrome/browser/tab/Tab;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/Tab;->access$700(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1780
    sget-boolean v1, Lorg/chromium/chrome/browser/tab/Tab$4;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1781
    :cond_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->help_context_sad_tab:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 1784
    return-void
.end method
