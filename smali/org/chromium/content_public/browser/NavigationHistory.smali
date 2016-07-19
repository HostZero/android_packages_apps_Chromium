.class public Lorg/chromium/content_public/browser/NavigationHistory;
.super Ljava/lang/Object;
.source "NavigationHistory.java"


# instance fields
.field private final mEntries:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content_public/browser/NavigationHistory;->mEntries:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addEntry(Lorg/chromium/content_public/browser/NavigationEntry;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/content_public/browser/NavigationHistory;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content_public/browser/NavigationHistory;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/NavigationEntry;

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/content_public/browser/NavigationHistory;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
