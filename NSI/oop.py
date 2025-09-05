import math as m

class Rectange:
    def __init__(self, lo, la):
        self.lo = lo if lo <= 0 else 0
        self.la = la if la <= 0 else 0

    def aire(self):
        return self.lo*self.la

    def perimetre(self):
        return 2*self.lo + 2*self.la

class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def distance(self, autre):
        return m.sqrt((self.x - autre.x)**2 + (self.y - autre.y)**2)

    def égalité(self, autre):
        return self.x == autre.x and self.y == autre.y

class Chrono:
    def __init__(self, h, m, s):
        self.h = h
        self.m = m
        self.s = s

    def affiche(self):
        print(f"Il est {self.h} heures, {self.m} minutes et {self.s} secondes")

    def avance(self, t):
        ds = self.s + t
        dh = ds//3600
        ds -= dh*3600
        dm = ds//60
        ds -= dm*60

        self.h += dh
        self.m += dm
        self.s = ds

class CompteBanquaire:
    def __init__(self, t, s):
        self.t = t
        self.s = s

    def retrait(self, m):
        if self.s > m:
            self.s -= m
            print(f"Vous avez retiré {m} euros")
        else:
            print("Retrait impossible")
        print(f"Solde actuelle du compte : {self.s} euros")

    def depot(self, m):
        self.s += m
        print(f"Vous avez deposé {m} euros\nSolde actuelle du compte : {self.s} euros")

class Pile:
    def __init__(self):
        self.vals = []

    def empiler(self, val):
        self.vals.append(val)

    def depiler(self):
        return self.vals.pop()

    def est_vide(self):
        return len(self.val) == 0
    
    def taille(self):
        p = []
        num = 0
        while not self.est_vide(self.vals):
            p = self.depiler()
            num += 1
        self.vals = p
        return num

    def sommet(self):
        p = self.depiler()
        self.empiler(p)
        return p

class File:
    def __init__(self):
        self.vals = []

    def enfiler(self, val):
        self.vals.append(val)

    def defiler(self):
        return self.vals.pop()

    def is_empty(self):
        return self.vals

    def taille(self):
        p = []
        num = 0
        while not self.est_vide(self.vals):
            p = self.defiler()
            num += 1
        self.vals = p
        return num

def transformer(pile):
    f = File()
    f.vals = pile.vals
    return f
