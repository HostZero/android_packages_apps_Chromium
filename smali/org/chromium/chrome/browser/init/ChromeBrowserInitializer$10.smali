.class Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$10;
.super Ljava/lang/Object;
.source "ChromeBrowserInitializer.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$10;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 412
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 416
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$10;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    # getter for: Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mInitialLocale:Ljava/util/Locale;
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->access$500(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    const-string/jumbo v0, "BrowserInitializer"

    const-string/jumbo v1, "Killing process because of locale change."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 421
    :cond_1
    return-void
.end method
