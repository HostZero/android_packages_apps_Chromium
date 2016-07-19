.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$8;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$8;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 761
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p2, v0

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$8;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # invokes: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->updatePermissionDisplay()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$1100(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V

    .line 765
    :cond_0
    return-void
.end method
