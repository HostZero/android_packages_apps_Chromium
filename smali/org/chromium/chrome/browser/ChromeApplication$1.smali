.class Lorg/chromium/chrome/browser/ChromeApplication$1;
.super Ljava/lang/Object;
.source "ChromeApplication.java"

# interfaces
.implements Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeApplication;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeApplication;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeApplication$1;->this$0:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableKeyboardCheck(Landroid/content/Context;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 212
    check-cast p1, Landroid/app/Activity;

    .line 218
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->getInstance()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->isLegacyMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 213
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object p1, v0

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method
