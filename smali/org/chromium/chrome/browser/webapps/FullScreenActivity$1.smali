.class Lorg/chromium/chrome/browser/webapps/FullScreenActivity$1;
.super Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;
.source "FullScreenActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/webapps/FullScreenActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/FullScreenActivity;Landroid/app/Activity;ZZ)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity$1;->this$0:Lorg/chromium/chrome/browser/webapps/FullScreenActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method


# virtual methods
.method public openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity$1;->this$0:Lorg/chromium/chrome/browser/webapps/FullScreenActivity;

    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method
