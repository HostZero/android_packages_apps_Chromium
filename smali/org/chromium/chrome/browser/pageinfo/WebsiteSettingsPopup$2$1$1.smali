.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1$1;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1$1;->this$2:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1$1;->this$2:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2$1;->this$1:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;

    # invokes: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;->superDismiss()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;->access$400(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;)V

    .line 358
    return-void
.end method
