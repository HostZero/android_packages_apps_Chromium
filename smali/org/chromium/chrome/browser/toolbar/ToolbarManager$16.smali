.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$16;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

.field final synthetic val$activityCreationTimeMs:J

.field final synthetic val$activityName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$16;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iput-wide p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$16;->val$activityCreationTimeMs:J

    iput-object p4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$16;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 974
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$16;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$16;->val$activityCreationTimeMs:J

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$16;->val$activityName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->onDeferredStartup(JLjava/lang/String;)V

    .line 975
    return-void
.end method
