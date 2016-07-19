.class public Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;
.super Ljava/lang/Object;
.source "TabPersistentStore.java"


# instance fields
.field public final ids:Ljava/util/List;

.field public final index:I

.field public final urls:Ljava/util/List;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->index:I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->ids:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabModelMetadata;->urls:Ljava/util/List;

    .line 135
    return-void
.end method
