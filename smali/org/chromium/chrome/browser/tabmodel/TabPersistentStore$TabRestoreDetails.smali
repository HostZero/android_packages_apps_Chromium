.class final Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;
.super Ljava/lang/Object;
.source "TabPersistentStore.java"


# instance fields
.field public final id:I

.field public final isIncognito:Ljava/lang/Boolean;

.field public final originalIndex:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->id:I

    .line 1064
    iput p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->originalIndex:I

    .line 1065
    iput-object p4, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->url:Ljava/lang/String;

    .line 1066
    iput-object p3, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->isIncognito:Ljava/lang/Boolean;

    .line 1067
    return-void
.end method
