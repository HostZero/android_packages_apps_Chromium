.class Lorg/chromium/chrome/browser/document/DocumentActivity$1;
.super Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;
.source "DocumentActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/document/DocumentActivity;Landroid/app/Activity;ZZ)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$1;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method


# virtual methods
.method public openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 263
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method
