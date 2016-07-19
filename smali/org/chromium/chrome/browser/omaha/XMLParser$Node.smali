.class final Lorg/chromium/chrome/browser/omaha/XMLParser$Node;
.super Ljava/lang/Object;
.source "XMLParser.java"


# instance fields
.field public final attributes:Ljava/util/Map;

.field public final children:Ljava/util/List;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    .line 40
    return-void
.end method
