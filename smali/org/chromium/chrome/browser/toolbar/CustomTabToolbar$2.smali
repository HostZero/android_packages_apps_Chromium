.class Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$2;
.super Ljava/lang/Object;
.source "CustomTabToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$2;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$2;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->show(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0
.end method
