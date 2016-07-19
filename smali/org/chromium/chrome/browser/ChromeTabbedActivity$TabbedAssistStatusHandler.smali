.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$TabbedAssistStatusHandler;
.super Lorg/chromium/chrome/browser/AssistStatusHandler;
.source "ChromeTabbedActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$TabbedAssistStatusHandler;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    .line 208
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/AssistStatusHandler;-><init>(Landroid/app/Activity;)V

    .line 209
    return-void
.end method


# virtual methods
.method public isAssistSupported()Z
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$TabbedAssistStatusHandler;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$TabbedAssistStatusHandler;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$000(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$TabbedAssistStatusHandler;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$000(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/AssistStatusHandler;->isAssistSupported()Z

    move-result v0

    goto :goto_0
.end method
