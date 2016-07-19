.class Lorg/chromium/chrome/browser/profiles/MostVisitedSites$1;
.super Ljava/lang/Object;
.source "MostVisitedSites.java"

# interfaces
.implements Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

.field final synthetic val$observer:Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/profiles/MostVisitedSites;Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$1;->this$0:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    iput-object p2, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$1;->val$observer:Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMostVisitedURLsAvailable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$1;->this$0:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    # getter for: Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->access$000(Lorg/chromium/chrome/browser/profiles/MostVisitedSites;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$1;->val$observer:Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;->onMostVisitedURLsAvailable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onPopularURLsAvailable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$1;->this$0:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    # getter for: Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->mNativeMostVisitedSites:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->access$000(Lorg/chromium/chrome/browser/profiles/MostVisitedSites;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$1;->val$observer:Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites$MostVisitedURLsObserver;->onPopularURLsAvailable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method
