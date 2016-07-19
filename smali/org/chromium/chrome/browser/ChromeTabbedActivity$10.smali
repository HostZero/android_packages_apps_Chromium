.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$10;
.super Ljava/lang/Object;
.source "ChromeTabbedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

.field final synthetic val$tabToClose:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$10;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$10;->val$tabToClose:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1194
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$10;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$10;->val$tabToClose:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    .line 1195
    return-void
.end method
