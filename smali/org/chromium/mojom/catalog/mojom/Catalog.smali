.class public interface abstract Lorg/chromium/mojom/catalog/mojom/Catalog;
.super Ljava/lang/Object;
.source "Catalog.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract getEntries([Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;)V
.end method
