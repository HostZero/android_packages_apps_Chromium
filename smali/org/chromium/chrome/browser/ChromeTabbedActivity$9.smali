.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$9;
.super Ljava/lang/Object;
.source "ChromeTabbedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$9;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1034
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordOpenedBookmarks()V

    .line 1035
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$9;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->showBookmarkManager(Landroid/app/Activity;)V

    .line 1036
    return-void
.end method
